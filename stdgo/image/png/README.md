# Module: `stdgo.image.png`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Png](<#class-png>)

  - [`function decode(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.image.Image, stdgo.Error>`](<#png-function-decode>)

  - [`function decodeConfig(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.image.Config, stdgo.Error>`](<#png-function-decodeconfig>)

  - [`function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image):stdgo.Error`](<#png-function-encode>)

- [typedef CompressionLevel](<#typedef-compressionlevel>)

- [typedef EncoderBuffer](<#typedef-encoderbuffer>)

- [typedef EncoderBufferPool](<#typedef-encoderbufferpool>)

- [typedef FormatError](<#typedef-formaterror>)

- [typedef T\_opaquer](<#typedef-t_opaquer>)

- [typedef UnsupportedError](<#typedef-unsupportederror>)

- [abstract T\_interlaceScan](<#abstract-t_interlacescan>)

- [abstract T\_decoder](<#abstract-t_decoder>)

- [abstract Encoder](<#abstract-encoder>)

- [abstract T\_encoder](<#abstract-t_encoder>)

# Constants


```haxe
import stdgo.image.png.Png
```


```haxe
final bestCompression:stdgo.image.png.CompressionLevel = stdgo._internal.image.png.Png_bestCompression.bestCompression
```


```haxe
final bestSpeed:stdgo.image.png.CompressionLevel = stdgo._internal.image.png.Png_bestSpeed.bestSpeed
```


```haxe
final defaultCompression:stdgo.image.png.CompressionLevel = stdgo._internal.image.png.Png_defaultCompression.defaultCompression
```


```haxe
final noCompression:stdgo.image.png.CompressionLevel = stdgo._internal.image.png.Png_noCompression.noCompression
```


# Classes


```haxe
import stdgo.image.png.*
```


## class Png



Package png implements a PNG image decoder and encoder.  


The PNG specification is at https://www.w3.org/TR/PNG/.  

### Png function decode


```haxe
function decode(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.image.Image, stdgo.Error>
```


```
Decode reads a PNG image from r and returns it as an image.Image.
        The type of Image returned depends on the PNG contents.
```
[\(view code\)](<./Png.hx#L371>)


### Png function decodeConfig


```haxe
function decodeConfig(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.image.Config, stdgo.Error>
```


```
DecodeConfig returns the color model and dimensions of a PNG image without
        decoding the entire image.
```
[\(view code\)](<./Png.hx#L381>)


### Png function encode


```haxe
function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image):stdgo.Error
```


```
Encode writes the Image m to w in PNG format. Any Image may be
        encoded, but images that are not image.NRGBA might be encoded lossily.
```
[\(view code\)](<./Png.hx#L391>)


# Typedefs


```haxe
import stdgo.image.png.*
```


## typedef CompressionLevel


```haxe
typedef CompressionLevel = stdgo._internal.image.png.CompressionLevel;
```


## typedef EncoderBuffer


```haxe
typedef EncoderBuffer = stdgo._internal.image.png.EncoderBuffer;
```


## typedef EncoderBufferPool


```haxe
typedef EncoderBufferPool = stdgo._internal.image.png.EncoderBufferPool;
```


## typedef FormatError


```haxe
typedef FormatError = stdgo._internal.image.png.FormatError;
```


## typedef T\_opaquer


```haxe
typedef T_opaquer = stdgo._internal.image.png.T_opaquer;
```


## typedef UnsupportedError


```haxe
typedef UnsupportedError = stdgo._internal.image.png.UnsupportedError;
```


# Abstracts


## abstract T\_interlaceScan


[\(view file containing code\)](<./Png.hx>)


## abstract T\_decoder


[\(view file containing code\)](<./Png.hx>)


## abstract Encoder


[\(view file containing code\)](<./Png.hx>)


## abstract T\_encoder


[\(view file containing code\)](<./Png.hx>)


