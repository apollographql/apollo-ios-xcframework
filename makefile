.PHONY: build-all-xc-frameworks build-apollo-xc-framework build-apollo-api-xc-framework build-apollo-sqlite-xc-framework build-apollo-web-socket-xc-framework

default: build-all-xc-frameworks

build-all-xc-frameworks:
	make build-apollo-xc-framework; \
	make build-apollo-api-xc-framework; \
	make build-apollo-sqlite-xc-framework; \
	make build-apollo-test-support-xc-framework; \
	make build-apollo-web-socket-xc-framework;

build-apollo-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "Apollo-xcframework" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "Apollo-xcframework" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild -create-xcframework -allow-internal-distribution -output ./build/Apollo.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/Apollo.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/Apollo.framework
	
build-apollo-api-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloAPI-xcframework" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloAPI-xcframework" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild -create-xcframework -allow-internal-distribution -output ./build/ApolloAPI.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/ApolloAPI.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/ApolloAPI.framework

build-apollo-sqlite-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloSQLite-xcframework" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloSQLite-xcframework" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild -create-xcframework -allow-internal-distribution -output ./build/ApolloSQLite.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/ApolloSQLite.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/ApolloSQLite.framework
	
build-apollo-test-support-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloTestSupport-xcframework" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloTestSupport-xcframework" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild -create-xcframework -allow-internal-distribution -output ./build/ApolloTestSupport.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/ApolloTestSupport.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/ApolloTestSupport.framework
	
build-apollo-web-socket-xc-framework:
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloWebSocket-xcframework" -destination 'generic/platform=iOS Simulator' -archivePath "./build/iphonesimulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild archive -configuration Release -project "Apollo.xcodeproj" -scheme "ApolloWebSocket-xcframework" -destination 'generic/platform=iOS' -archivePath "./build/iphoneos.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=NO
	xcodebuild -create-xcframework -allow-internal-distribution -output ./build/ApolloWebSocket.xcframework -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/ApolloWebSocket.framework -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/ApolloWebSocket.framework
