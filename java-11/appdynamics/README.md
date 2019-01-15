NAIS Java 11 with AppDynamics baseimage
=======================================

Basic Usage
---------------------

Se README for Java 11 for general usage.

## Configuration of AppDynamics

AppDynamics will automatically report itself by using the value of the
environment variable `APP_NAME` as the Application name.

To use a different Application name in AppDynamics, the environment variable
`APPD_NAME` can be set in your Dockerfile.

### Aggregating different tiers as one application

If your application consists of different services that together equals to an
complete application, you can configure it as one Application in AppDynamics.

Set the same value for `APPD_NAME` for all the different services, and give each
service a unique value for `APPD_TIER`.

F.ex:
```
# Dockerfile for Service 1
ENV APPD_NAME=soknad
ENV APPD_TIER=frontend

# Dockerfile for Service 2
ENV APPD_NAME=soknad
ENV APPD_TIER=backend
```

# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)

## 2019-01-15

### Added
- Added init-script that configures AppDynamics automatically

## 2019-01-08

### Added
- Initial version