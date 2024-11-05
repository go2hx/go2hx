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
    	gotoNext = 239884
    	_ = gotoNext == 239884
    	_ = 0
    	fieldBreak = false
    	gotoNext = 239892
    	_ = gotoNext == 239892
    	if !fieldBreak && (env != "") {
    		gotoNext = 239906
    		_ = gotoNext == 239906
    		field_239910 = ""
    		i_239924 = indexByte(env, 44)
    		if i_239924 < 0 {
    			gotoNext = 239960
    			_ = gotoNext == 239960
    			field_239910, env = env, ""
    			gotoNext = 240038
    		} else {
    			gotoNext = 239995
    			_ = gotoNext == 239995
    			field_239910, env = env[:i_239924], env[i_239924+1:]
    			gotoNext = 240038
}
    		_ = gotoNext == 240038
    		if len(field_239910) < 4 || field_239910[:4] != "cpu." {
    			gotoNext = 240079
    			_ = gotoNext == 240079
    			_ = 0
    			gotoNext = 239892
    			gotoNext = 240099
    		} else {
    			gotoNext = 240099
}
    		_ = gotoNext == 240099
    		i_239924 = indexByte(field_239910, 61)
    		if i_239924 < 0 {
    			gotoNext = 240136
    			_ = gotoNext == 240136
    			print("GODEBUG: no value specified for \"", field_239910, "\"\n")
    			_ = 0
    			gotoNext = 239892
    			gotoNext = 240218
    		} else {
    			gotoNext = 240218
}
    		_ = gotoNext == 240218
    		key_240218, value_240223 = field_239910[4:i_239924], field_239910[i_239924+1:]
    		_ = 0
    		gotoNext = 240298
    		_ = gotoNext == 240298
    		switch value_240223 {
    		case "on":
    			gotoNext = 240315
    			_ = gotoNext == 240315
    			enable_240284 = true
    			gotoNext = 240499
    		case "off":
    			gotoNext = 240345
    			_ = gotoNext == 240345
    			enable_240284 = false
    			gotoNext = 240499
    		default:
    			gotoNext = 240377
    			_ = gotoNext == 240377
    			print("GODEBUG: value \"", value_240223, "\" not supported for cpu option \"", key_240218, "\"\n")
    			gotoNext = 239892
    			gotoNext = 240499
}
    		_ = gotoNext == 240499
    		if key_240218 == "all" {
    			gotoNext = 240515
    			_ = gotoNext == 240515
    			if 0 < len(options) {
    				gotoNext = 240610
    				_ = gotoNext == 240610
    				i_240524 = 0
    				gotoNext = 240611
    				_ = gotoNext == 240611
    				if i_240524 < len(options) {
    					gotoNext = 240543
    					_ = gotoNext == 240543
    					options[i_240524].Specified = true
    					options[i_240524].Enable = enable_240284
    					i_240524++
    					gotoNext = 240611
    				} else {
    					gotoNext = 240616
}
    				gotoNext = 240616
    			} else {
    				gotoNext = 240616
}
    			_ = gotoNext == 240616
    			gotoNext = 239892
    			gotoNext = 240638
    		} else {
    			gotoNext = 240638
}
    		_ = gotoNext == 240638
    		if 0 < len(options) {
    			gotoNext = 240782
    			_ = gotoNext == 240782
    			i_240642 = 0
    			gotoNext = 240783
    			_ = gotoNext == 240783
    			if i_240642 < len(options) {
    				gotoNext = 240661
    				_ = gotoNext == 240661
    				if options[i_240642].Name == key_240218 {
    					gotoNext = 240692
    					_ = gotoNext == 240692
    					options[i_240642].Specified = true
    					options[i_240642].Enable = enable_240284
    					gotoNext = 239892
    					gotoNext = 240642
    				} else {
    					gotoNext = 240642
}
    				_ = gotoNext == 240642
    				i_240642++
    				gotoNext = 240783
    			} else {
    				gotoNext = 240788
}
    			gotoNext = 240788
    		} else {
    			gotoNext = 240788
}
    		_ = gotoNext == 240788
    		print("GODEBUG: unknown cpu feature \"", key_240218, "\"\n")
    		gotoNext = 239892
    	} else {
    		gotoNext = 240847
}
    	_ = gotoNext == 240847
    	if 0 < len(options) {
    		gotoNext = 241060
    		_ = gotoNext == 241060
    		i_240859_0, o_240854 = 0, options[0]
    		gotoNext = 241061
    		_ = gotoNext == 241061
    		if i_240859_0 < len(options) {
    			gotoNext = 240873
    			_ = gotoNext == 240873
    			o_240854 = options[i_240859_0]
    			if !o_240854.Specified {
    				gotoNext = 240893
    				_ = gotoNext == 240893
    				i_240859_0++
    				gotoNext = 241061
    				gotoNext = 240914
    			} else {
    				gotoNext = 240914
}
    			_ = gotoNext == 240914
    			if o_240854.Enable && !*o_240854.Feature {
    				gotoNext = 240941
    				_ = gotoNext == 240941
    				print("GODEBUG: can not enable \"", o_240854.Name, "\", missing CPU support\n")
    				i_240859_0++
    				gotoNext = 241061
    				gotoNext = 241038
    			} else {
    				gotoNext = 241038
}
    			_ = gotoNext == 241038
    			*o_240854.Feature = o_240854.Enable
    			i_240859_0++
    			gotoNext = 241061
    		} else {
    			gotoNext = 241063
}
    		gotoNext = 241063
    	} else {
    		gotoNext = 241063
}
    	_ = gotoNext == 241063
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


