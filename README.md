## GitBucket

[GitBucket](https://github.com/gitbucket/gitbucket)

A Git platform powered by Scala with easy installation, high extensibility & github API compatibility

## GitBucket Docker Images

This image is based on Alpine Linux.

### Usage

Example:

    docker run -d -p 8080:8080 -p 29418:29418 geekduck/gitbucket


You can also specify the data directory by -v option:

    docker run -d -p 8080:8080 -p 29418:29418 -v `pwd`/data:/gitbucket geekduck/gitbucket
