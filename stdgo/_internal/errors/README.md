# Module: `stdgo._internal.errors`

[(view library index)](../../stdgo.md)


# Overview



# Index


- [Variables](<#variables>)

- [`function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool`](<#function-as>)

- [`function is_(_err:stdgo.Error, _target:stdgo.Error):Bool`](<#function-is_>)

- [`function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error`](<#function-join>)

- [`function new_(_text:stdgo.GoString):stdgo.Error`](<#function-new_>)

- [`function unwrap(_err:stdgo.Error):stdgo.Error`](<#function-unwrap>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef T\_\_interface\_1](<#typedef-t__interface_1>)

- [typedef T\_\_interface\_2](<#typedef-t__interface_2>)

- [typedef T\_\_interface\_3](<#typedef-t__interface_3>)

# Examples


- [`exampleAs`](<#exampleas>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleUnwrap`](<#exampleunwrap>)

# Variables


```haxe
import stdgo._internal.errors.Errors
```


```haxe
var _errorType:stdgo._internal.internal.reflectlite.Type_
```


```haxe
var errUnsupported:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.errors.Errors
```


## function as


```haxe
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool
```


### exampleAs


<details><summary></summary>
<p>


```haxe
function exampleAs():Void {
        {
            var __tmp__ = stdgo._internal.os.Os.open(("non-existing" : stdgo.GoString)), __0:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _pathError:stdgo.Ref<stdgo._internal.io.fs.Fs.PathError> = (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>);
                if (stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pathError) : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>>)))) {
                    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Failed at path:" : stdgo.GoString)), stdgo.Go.toInterface(_pathError.path));
                } else {
                    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L144>)


## function is\_


```haxe
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool
```


[\(view code\)](<./Errors.hx#L102>)


## function join


```haxe
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error
```


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _err1 = stdgo._internal.errors.Errors.new_(("err1" : stdgo.GoString));
        var _err2 = stdgo._internal.errors.Errors.new_(("err2" : stdgo.GoString));
        var _err = stdgo._internal.errors.Errors.join(_err1, _err2);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err));
        if (stdgo._internal.errors.Errors.is_(_err, _err1)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("err is err1" : stdgo.GoString)));
        };
        if (stdgo._internal.errors.Errors.is_(_err, _err2)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("err is err2" : stdgo.GoString)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L72>)


## function new\_


```haxe
function new_(_text:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Errors.hx#L69>)


## function unwrap


```haxe
function unwrap(_err:stdgo.Error):stdgo.Error
```


### exampleUnwrap


<details><summary></summary>
<p>


```haxe
function exampleUnwrap():Void {
        var _err1 = stdgo._internal.errors.Errors.new_(("error1" : stdgo.GoString));
        var _err2 = stdgo._internal.fmt.Fmt.errorf(("error2: [%w]" : stdgo.GoString), stdgo.Go.toInterface(_err1));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err2));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.errors.Errors.unwrap(_err2)));
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L91>)


# Typedefs


```haxe
import stdgo._internal.errors.*
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function unwrap():stdgo.Error;
};
```


## typedef T\_\_interface\_1


```haxe
typedef T__interface_1 = {
	public function is_(_0:stdgo.Error):Bool;
};
```


## typedef T\_\_interface\_2


```haxe
typedef T__interface_2 = {
	public function unwrap():stdgo.Slice<stdgo.Error>;
};
```


## typedef T\_\_interface\_3


```haxe
typedef T__interface_3 = {
	public function as(_0:stdgo.AnyInterface):Bool;
};
```


