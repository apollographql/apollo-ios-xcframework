default: build-xc-framework

build-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "Apollo" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "Apollo" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	xcodebuild -create-xcframework -output ./build/Apollo.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/Apollo.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/Apollo.framework