// swift-tools-version:4.2

import PackageDescription

let package = Package(
	name: "Perfect-LocalAuthentication-MySQL",
	products: [
		.library(name: "PerfectLocalAuthentication", targets: ["PerfectLocalAuthentication"]),
	],
	dependencies: [
		.package(url: "https://github.com/iamjono/JSONConfig.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-RequestLogger.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-SMTP.git", from: "3.0.0"),
		.package(url: "https://github.com/SwiftORM/MySQL-StORM.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-Session-MySQL.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-Mustache.git", from: "3.0.0"),
    	.package(url: "https://github.com/PerfectlySoft/Perfect-HTTP.git", from: "3.0.0")
	],
	targets: [
		.target(name: "PerfectLocalAuthentication", dependencies: ["JSONConfig", "PerfectRequestLogger","PerfectSMTP","MySQLStORM","PerfectSessionMySQL","PerfectMustache","PerfectHTTP"])
	]
)

