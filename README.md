# simple-jsonrpc-client

## Introduction
A simple jsonrpc client on http protocol in Common Lisp.

## Installation
use [roswell](https://github.com/roswell/roswell)
```
ros install shakascchen/simple-jsonrpc-client
``` 

## Usage
``` Common Lisp
CL-USER> (simple-jsonrpc-client:call "http://127.0.0.1:3030" 
                                     :|method| "sum"
                                     :|params| '(5 8))
                            
"{\"jsonrpc\":\"2.0\",\"result\":\"13\",\"id\":1}
"
200
#<HASH-TABLE :TEST EQUAL :COUNT 4 {1005BDF2E3}>
#<QURI.URI.HTTP:URI-HTTP http://127.0.0.1:3030>
#<SB-SYS:FD-STREAM for "socket 127.0.0.1:62958, peer: 127.0.0.1:3030" {1005A4ABE3}>
```
