#!/bin/bash

# Ensure a version number is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VERSION=$1

# Validate the version format
if [[ ! $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Version must be in the format x.x.x"
  exit 1
fi

# Validate the version number in DaroAds.podspec
if ! grep -q "spec.version *= *'$VERSION'" DaroMAds.podspec; then
  echo "Version $VERSION does not match the version in DaroMAds.podspec"
  exit 1
fi

# Check if DaroM.xcframework.zip exists
if [ ! -f "build/DaroM.xcframework.zip" ]; then
  echo "DaroM.xcframework.zip file not found"
  exit 1
fi

# Create a tag and release using GitHub CLI with the file
gh release create $VERSION "DaroM.xcframework.zip" --title "Release $VERSION" --notes "Release version $VERSION"

# Push the podspec to the trunk
pod trunk push DaroMAds.podspec --allow-warnings --verbose