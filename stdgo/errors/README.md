# Module: `stdgo.errors`

[(view library index)](../stdgo.md)


# Overview


Package errors implements functions to manipulate errors.  



The New function creates errors whose only content is a text message.  



An error e wraps another error if e's type has one of the methods  






Unwrap\(\) error  



Unwrap\(\) \[\]error  



If e.Unwrap\(\) returns a non\-nil error w or a slice containing w,  
then we say that e wraps w. A nil error returned from e.Unwrap\(\)  
indicates that e does not wrap any error. It is invalid for an  
Unwrap method to return an \[\]error containing a nil error value.  



An easy way to create wrapped errors is to call fmt.Errorf and apply  
the %w verb to the error argument:  






wrapsErr := fmt.Errorf\("... %w ...", ..., err, ...\)  



Successive unwrapping of an error creates a tree. The Is and As  
functions inspect an error's tree by examining first the error  
itself followed by the tree of each of its children in turn  
\(pre\-order, depth\-first traversal\).  



Is examines the tree of its first argument looking for an error that  
matches the second. It reports whether it finds a match. It should be  
used in preference to simple equality checks:  






if errors.Is\(err, fs.ErrExist\)  



is preferable to  






if err == fs.ErrExist  



because the former will succeed if err wraps fs.ErrExist.  



As examines the tree of its first argument looking for an error that can be  
assigned to its second argument, which must be a pointer. If it succeeds, it  
performs the assignment and returns true. Otherwise, it returns false. The form  






var perr \*fs.PathError  



if errors.As\(err, &perr\) \{  



fmt.Println\(perr.Path\)  



\}  



is preferable to  






if perr, ok := err.\(\*fs.PathError\); ok \{  



fmt.Println\(perr.Path\)  



\}  



because the former will succeed if err wraps an \*fs.PathError.  



<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestNewEqual
--- PASS: TestNewEqual (%!s(float64=9.107589721679688e-05))

=== RUN  TestErrorMethod
--- PASS: TestErrorMethod (%!s(float64=1.0013580322265625e-05))

=== RUN  TestJoinReturnsNil
--- PASS: TestJoinReturnsNil (%!s(float64=8.106231689453125e-06))

=== RUN  TestJoin
--- PASS: TestJoin (%!s(float64=0.00021195411682128906))

=== RUN  TestJoinErrorMethod
--- PASS: TestJoinErrorMethod (%!s(float64=3.814697265625e-05))

=== RUN  TestIs
--- PASS: TestIs (%!s(float64=8.487701416015625e-05))

=== RUN  TestAs
--- PASS: TestAs (%!s(float64=0.01617908477783203))

=== RUN  TestAsValidation
--- PASS: TestAsValidation (%!s(float64=0.0006430149078369141))

=== RUN  TestUnwrap
--- PASS: TestUnwrap (%!s(float64=0.00010180473327636719))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestNewEqual
--- PASS: TestNewEqual (%!s(float64=0.00011491775512695312))

=== RUN  TestErrorMethod
--- PASS: TestErrorMethod (%!s(float64=2.288818359375e-05))

=== RUN  TestJoinReturnsNil
--- PASS: TestJoinReturnsNil (%!s(float64=3.409385681152344e-05))

=== RUN  TestJoin
--- PASS: TestJoin (%!s(float64=0.0006098747253417969))

=== RUN  TestJoinErrorMethod
--- PASS: TestJoinErrorMethod (%!s(float64=0.00015306472778320312))

=== RUN  TestIs
--- PASS: TestIs (%!s(float64=0.00023102760314941406))

=== RUN  TestAs
--- PASS: TestAs (%!s(float64=0.020750045776367188))

=== RUN  TestAsValidation
--- PASS: TestAsValidation (%!s(float64=0.0015778541564941406))

=== RUN  TestUnwrap
--- PASS: TestUnwrap (%!s(float64=0.00023603439331054688))

```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool`](<#function-as>)

- [`function is_(_err:stdgo.Error, _target:stdgo.Error):Bool`](<#function-is_>)

- [`function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error`](<#function-join>)

- [`function new_(_text:stdgo.GoString):stdgo.Error`](<#function-new_>)

- [`function unwrap(_err:stdgo.Error):stdgo.Error`](<#function-unwrap>)

- [class T\_errorString](<#class-t_errorstring>)

  - [`function new(?_s:stdgo.GoString):Void`](<#t_errorstring-function-new>)

  - [`function error():stdgo.GoString`](<#t_errorstring-function-error>)

- [class T\_joinError](<#class-t_joinerror>)

  - [`function new(?_errs:stdgo.Slice<stdgo.Error>):Void`](<#t_joinerror-function-new>)

  - [`function error():stdgo.GoString`](<#t_joinerror-function-error>)

  - [`function unwrap():stdgo.Slice<stdgo.Error>`](<#t_joinerror-function-unwrap>)

# Examples


- [`exampleAs`](<#exampleas>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleUnwrap`](<#exampleunwrap>)

# Functions


```haxe
import stdgo.errors.Errors
```


## function as


```haxe
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool
```


As finds the first error in err's tree that matches target, and if one is found, sets  
target to that error value and returns true. Otherwise, it returns false.  



The tree consists of err itself, followed by the errors obtained by repeatedly  
calling Unwrap. When err wraps multiple errors, As examines err followed by a  
depth\-first traversal of its children.  



An error matches target if the error's concrete value is assignable to the value  
pointed to by target, or if the error has a method As\(interface\{\}\) bool such that  
As\(target\) returns true. In the latter case, the As method is responsible for  
setting target.  



An error type might provide an As method so it can be treated as if it were a  
different error type.  



As panics if target is not a non\-nil pointer to either a type that implements  
error, or to any interface type.  



### exampleAs


<details><summary></summary>
<p>


```haxe
function exampleAs():Void {
        {
            var __tmp__ = stdgo.os.Os.open(("non-existing" : GoString)), _0:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                var _pathError:Ref<stdgo.io.fs.Fs.PathError> = (null : Ref<stdgo.io.fs.Fs.PathError>);
                if (stdgo.errors.Errors.as(_err, Go.toInterface((_pathError : Ref<Ref<stdgo.io.fs.Fs.PathError>>)))) {
                    stdgo.fmt.Fmt.println(Go.toInterface(("Failed at path:" : GoString)), Go.toInterface(_pathError.path));
                } else {
                    stdgo.fmt.Fmt.println(Go.toInterface(_err));
                };
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L286>)


## function is\_


```haxe
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool
```


Is reports whether any error in err's tree matches target.  



The tree consists of err itself, followed by the errors obtained by repeatedly  
calling Unwrap. When err wraps multiple errors, Is examines err followed by a  
depth\-first traversal of its children.  



An error is considered to match a target if it is equal to that target or if  
it implements a method Is\(error\) bool such that Is\(target\) returns true.  



An error type might provide an Is method so it can be treated as equivalent  
to an existing error. For example, if MyError defines  






func \(m MyError\) Is\(target error\) bool \{ return target == fs.ErrExist \}  



then Is\(MyError\{\}, fs.ErrExist\) returns true. See syscall.Errno.Is for  
an example in the standard library. An Is method should only shallowly  
compare err and the target and not call Unwrap on either.  



[\(view code\)](<./Errors.hx#L225>)


## function join


```haxe
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error
```


Join returns an error that wraps the given errors.  
Any nil error values are discarded.  
Join returns nil if errs contains no non\-nil values.  
The error formats as the concatenation of the strings obtained  
by calling the Error method of each element of errs, with a newline  
between each string.  



### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _err1:Error = stdgo.errors.Errors.new_(("err1" : GoString));
        var _err2:Error = stdgo.errors.Errors.new_(("err2" : GoString));
        var _err:Error = stdgo.errors.Errors.join(_err1, _err2);
        stdgo.fmt.Fmt.println(Go.toInterface(_err));
        if (stdgo.errors.Errors.is_(_err, _err1)) {
            stdgo.fmt.Fmt.println(Go.toInterface(("err is err1" : GoString)));
        };
        if (stdgo.errors.Errors.is_(_err, _err2)) {
            stdgo.fmt.Fmt.println(Go.toInterface(("err is err2" : GoString)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L169>)


## function new\_


```haxe
function new_(_text:stdgo.GoString):stdgo.Error
```


New returns an error that formats as the given text.  
Each call to New returns a distinct error value even if the text is identical.  



[\(view code\)](<./Errors.hx#L158>)


## function unwrap


```haxe
function unwrap(_err:stdgo.Error):stdgo.Error
```


Unwrap returns the result of calling the Unwrap method on err, if err's  
type contains an Unwrap method returning error.  
Otherwise, Unwrap returns nil.  



Unwrap returns nil if the Unwrap method returns \[\]error.  



### exampleUnwrap


<details><summary></summary>
<p>


```haxe
function exampleUnwrap():Void {
        var _err1:Error = stdgo.errors.Errors.new_(("error1" : GoString));
        var _err2:Error = stdgo.fmt.Fmt.errorf(("error2: [%w]" : GoString), Go.toInterface(_err1));
        stdgo.fmt.Fmt.println(Go.toInterface(_err2));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.errors.Errors.unwrap(_err2)));
    }
```


</p>
</details>


[\(view code\)](<./Errors.hx#L195>)


# Classes


```haxe
import stdgo.errors.*
```


## class T\_errorString


errorString is a trivial implementation of error.  



```haxe
var _s:stdgo.GoString
```


### T\_errorString function new


```haxe
function new(?_s:stdgo.GoString):Void
```





[\(view code\)](<./Errors.hx#L131>)


### T\_errorString function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors.hx#L353>)


## class T\_joinError





```haxe
var _errs:stdgo.Slice<stdgo.Error>
```


### T\_joinError function new


```haxe
function new(?_errs:stdgo.Slice<stdgo.Error>):Void
```





[\(view code\)](<./Errors.hx#L146>)


### T\_joinError function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors.hx#L376>)


### T\_joinError function unwrap


```haxe
function unwrap():stdgo.Slice<stdgo.Error>
```





[\(view code\)](<./Errors.hx#L372>)


