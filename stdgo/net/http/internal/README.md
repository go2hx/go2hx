# Module: `stdgo.net.http.internal`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Internal](<#class-internal>)

  - [`function newChunkedReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#internal-function-newchunkedreader>)

  - [`function newChunkedWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#internal-function-newchunkedwriter>)

- [abstract T\_chunkedReader](<#abstract-t_chunkedreader>)

- [abstract T\_chunkedWriter](<#abstract-t_chunkedwriter>)

- [abstract FlushAfterChunkWriter](<#abstract-flushafterchunkwriter>)

# Variables


```haxe
import stdgo.net.http.internal.Internal
```


```haxe
var errLineTooLong:stdgo.Error
```


# Classes


```haxe
import stdgo.net.http.internal.*
```


## class Internal


```
Package internal contains HTTP internals shared by net/http and
    net/http/httputil.
```
### Internal function newChunkedReader


```haxe
function newChunkedReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
NewChunkedReader returns a new chunkedReader that translates the data read from r
        out of HTTP "chunked" format before returning it.
        The chunkedReader returns io.EOF when the final 0-length chunk is read.
```

NewChunkedReader is not needed by normal applications. The http package
automatically decodes chunking when reading response bodies.  

[\(view code\)](<./Internal.hx#L153>)


### Internal function newChunkedWriter


```haxe
function newChunkedWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


```
NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        "chunked" format before writing them to w. Closing the returned chunkedWriter
        sends the final 0-length chunk that marks the end of the stream but does
        not send the final CRLF that appears after trailers; trailers and the last
        CRLF must be written separately.
```

NewChunkedWriter is not needed by normal applications. The http
package adds chunking automatically if handlers don't set a
Content\-Length header. Using newChunkedWriter inside a handler
would result in double chunking or chunking with a Content\-Length
length, both of which are wrong.  

[\(view code\)](<./Internal.hx#L169>)


# Abstracts


## abstract T\_chunkedReader


[\(view file containing code\)](<./Internal.hx>)


## abstract T\_chunkedWriter


[\(view file containing code\)](<./Internal.hx>)


## abstract FlushAfterChunkWriter


[\(view file containing code\)](<./Internal.hx>)


