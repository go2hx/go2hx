# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Cpu](<#class-cpu>)

  - [`function initialize(_env:String):Void`](<#cpu-function-initialize>)

  - [`function name():String`](<#cpu-function-name>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [abstract CacheLinePad](<#abstract-cachelinepad>)

- [abstract T\_option](<#abstract-t_option>)

# Constants


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cacheLinePadSize.cacheLinePadSize
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var arm:stdgo._internal.internal.cpu.T__struct_1
```


```haxe
var arm64:stdgo._internal.internal.cpu.T__struct_2
```


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


```haxe
var debugOptions:Bool
```


```haxe
var mips64x:stdgo._internal.internal.cpu.T__struct_3
```


```haxe
var options:Array<stdgo.internal.cpu.T_option>
```


```haxe
var ppc64:stdgo._internal.internal.cpu.T__struct_4
```


```haxe
var s390x:stdgo._internal.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo._internal.internal.cpu.T__struct_0
```


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class Cpu


```
{
    	gotoNext = 253825
    	_ = gotoNext == 253825
    	_ = 0
    	fieldBreak = false
    	gotoNext = 253833
    	_ = gotoNext == 253833
    	if !fieldBreak && (env != "") {
    		gotoNext = 253847
    		_ = gotoNext == 253847
    		field_253851 = ""
    		i_253865 = indexByte(env, 44)
    		if i_253865 < 0 {
    			gotoNext = 253901
    			_ = gotoNext == 253901
    			field_253851, env = env, ""
    			gotoNext = 253979
    		} else {
    			gotoNext = 253936
    			_ = gotoNext == 253936
    			field_253851, env = env[:i_253865], env[i_253865+1:]
    			gotoNext = 253979
}
    		_ = gotoNext == 253979
    		if len(field_253851) < 4 || field_253851[:4] != "cpu." {
    			gotoNext = 254020
    			_ = gotoNext == 254020
    			_ = 0
    			gotoNext = 253833
    			gotoNext = 254040
    		} else {
    			gotoNext = 254040
}
    		_ = gotoNext == 254040
    		i_253865 = indexByte(field_253851, 61)
    		if i_253865 < 0 {
    			gotoNext = 254077
    			_ = gotoNext == 254077
    			print("GODEBUG: no value specified for \"", field_253851, "\"\n")
    			_ = 0
    			gotoNext = 253833
    			gotoNext = 254159
    		} else {
    			gotoNext = 254159
}
    		_ = gotoNext == 254159
    		key_254159, value_254164 = field_253851[4:i_253865], field_253851[i_253865+1:]
    		_ = 0
    		gotoNext = 254239
    		_ = gotoNext == 254239
    		switch value_254164 {
    		case "on":
    			gotoNext = 254256
    			_ = gotoNext == 254256
    			enable_254225 = true
    			gotoNext = 254440
    		case "off":
    			gotoNext = 254286
    			_ = gotoNext == 254286
    			enable_254225 = false
    			gotoNext = 254440
    		default:
    			gotoNext = 254318
    			_ = gotoNext == 254318
    			print("GODEBUG: value \"", value_254164, "\" not supported for cpu option \"", key_254159, "\"\n")
    			gotoNext = 253833
    			gotoNext = 254440
}
    		_ = gotoNext == 254440
    		if key_254159 == "all" {
    			gotoNext = 254456
    			_ = gotoNext == 254456
    			if 0 < len(options) {
    				gotoNext = 254551
    				_ = gotoNext == 254551
    				i_254465 = 0
    				gotoNext = 254552
    				_ = gotoNext == 254552
    				if i_254465 < len(options) {
    					gotoNext = 254484
    					_ = gotoNext == 254484
    					options[i_254465].Specified = true
    					options[i_254465].Enable = enable_254225
    					i_254465++
    					gotoNext = 254552
    				} else {
    					gotoNext = 254557
}
    				gotoNext = 254557
    			} else {
    				gotoNext = 254557
}
    			_ = gotoNext == 254557
    			gotoNext = 253833
    			gotoNext = 254579
    		} else {
    			gotoNext = 254579
}
    		_ = gotoNext == 254579
    		if 0 < len(options) {
    			gotoNext = 254723
    			_ = gotoNext == 254723
    			i_254583 = 0
    			gotoNext = 254724
    			_ = gotoNext == 254724
    			if i_254583 < len(options) {
    				gotoNext = 254602
    				_ = gotoNext == 254602
    				if options[i_254583].Name == key_254159 {
    					gotoNext = 254633
    					_ = gotoNext == 254633
    					options[i_254583].Specified = true
    					options[i_254583].Enable = enable_254225
    					gotoNext = 253833
    					gotoNext = 254583
    				} else {
    					gotoNext = 254583
}
    				_ = gotoNext == 254583
    				i_254583++
    				gotoNext = 254724
    			} else {
    				gotoNext = 254729
}
    			gotoNext = 254729
    		} else {
    			gotoNext = 254729
}
    		_ = gotoNext == 254729
    		print("GODEBUG: unknown cpu feature \"", key_254159, "\"\n")
    		gotoNext = 253833
    	} else {
    		gotoNext = 254788
}
    	_ = gotoNext == 254788
    	if 0 < len(options) {
    		gotoNext = 255001
    		_ = gotoNext == 255001
    		i_254800_0, o_254795 = 0, options[0]
    		gotoNext = 255002
    		_ = gotoNext == 255002
    		if i_254800_0 < len(options) {
    			gotoNext = 254814
    			_ = gotoNext == 254814
    			o_254795 = options[i_254800_0]
    			if !o_254795.Specified {
    				gotoNext = 254834
    				_ = gotoNext == 254834
    				i_254800_0++
    				gotoNext = 255002
    				gotoNext = 254855
    			} else {
    				gotoNext = 254855
}
    			_ = gotoNext == 254855
    			if o_254795.Enable && !*o_254795.Feature {
    				gotoNext = 254882
    				_ = gotoNext == 254882
    				print("GODEBUG: can not enable \"", o_254795.Name, "\", missing CPU support\n")
    				i_254800_0++
    				gotoNext = 255002
    				gotoNext = 254979
    			} else {
    				gotoNext = 254979
}
    			_ = gotoNext == 254979
    			*o_254795.Feature = o_254795.Enable
    			i_254800_0++
    			gotoNext = 255002
    		} else {
    			gotoNext = 255004
}
    		gotoNext = 255004
    	} else {
    		gotoNext = 255004
}
    	_ = gotoNext == 255004
    	gotoNext = -1
    }
```
### Cpu function initialize


```haxe
function initialize(_env:String):Void
```


```
Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
```
[\(view code\)](<./Cpu.hx#L309>)


### Cpu function name


```haxe
function name():String
```


```
Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
```

Implementations that use the Operating System \(e.g. sysctl or /sys/\)
to gather CPU information for display should be placed in internal/sysinfo.  

[\(view code\)](<./Cpu.hx#L320>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.cpu.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.internal.cpu.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.internal.cpu.T__struct_2;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.internal.cpu.T__struct_3;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.internal.cpu.T__struct_4;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.internal.cpu.T__struct_5;
```


# Abstracts


## abstract CacheLinePad


[\(view file containing code\)](<./Cpu.hx>)


## abstract T\_option


[\(view file containing code\)](<./Cpu.hx>)


