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
    	gotoNext = 43110
    	_ = gotoNext == 43110
    	_ = 0
    	fieldBreak = false
    	gotoNext = 43118
    	_ = gotoNext == 43118
    	if !fieldBreak && (env != "") {
    		gotoNext = 43132
    		_ = gotoNext == 43132
    		field_43136 = ""
    		i_43150 = indexByte(env, 44)
    		if i_43150 < 0 {
    			gotoNext = 43186
    			_ = gotoNext == 43186
    			field_43136, env = env, ""
    			gotoNext = 43264
    		} else {
    			gotoNext = 43221
    			_ = gotoNext == 43221
    			field_43136, env = env[:i_43150], env[i_43150+1:]
    			gotoNext = 43264
}
    		_ = gotoNext == 43264
    		if len(field_43136) < 4 || field_43136[:4] != "cpu." {
    			gotoNext = 43305
    			_ = gotoNext == 43305
    			_ = 0
    			gotoNext = 43118
    			gotoNext = 43325
    		} else {
    			gotoNext = 43325
}
    		_ = gotoNext == 43325
    		i_43150 = indexByte(field_43136, 61)
    		if i_43150 < 0 {
    			gotoNext = 43362
    			_ = gotoNext == 43362
    			print("GODEBUG: no value specified for \"", field_43136, "\"\n")
    			_ = 0
    			gotoNext = 43118
    			gotoNext = 43444
    		} else {
    			gotoNext = 43444
}
    		_ = gotoNext == 43444
    		key_43444, value_43449 = field_43136[4:i_43150], field_43136[i_43150+1:]
    		_ = 0
    		gotoNext = 43524
    		_ = gotoNext == 43524
    		switch value_43449 {
    		case "on":
    			gotoNext = 43541
    			_ = gotoNext == 43541
    			enable_43510 = true
    			gotoNext = 43725
    		case "off":
    			gotoNext = 43571
    			_ = gotoNext == 43571
    			enable_43510 = false
    			gotoNext = 43725
    		default:
    			gotoNext = 43603
    			_ = gotoNext == 43603
    			print("GODEBUG: value \"", value_43449, "\" not supported for cpu option \"", key_43444, "\"\n")
    			gotoNext = 43118
    			gotoNext = 43725
}
    		_ = gotoNext == 43725
    		if key_43444 == "all" {
    			gotoNext = 43741
    			_ = gotoNext == 43741
    			if 0 < len(options) {
    				gotoNext = 43836
    				_ = gotoNext == 43836
    				i_43750 = 0
    				gotoNext = 43837
    				_ = gotoNext == 43837
    				if i_43750 < len(options) {
    					gotoNext = 43769
    					_ = gotoNext == 43769
    					options[i_43750].Specified = true
    					options[i_43750].Enable = enable_43510
    					i_43750++
    					gotoNext = 43837
    				} else {
    					gotoNext = 43842
}
    				gotoNext = 43842
    			} else {
    				gotoNext = 43842
}
    			_ = gotoNext == 43842
    			gotoNext = 43118
    			gotoNext = 43864
    		} else {
    			gotoNext = 43864
}
    		_ = gotoNext == 43864
    		if 0 < len(options) {
    			gotoNext = 44008
    			_ = gotoNext == 44008
    			i_43868 = 0
    			gotoNext = 44009
    			_ = gotoNext == 44009
    			if i_43868 < len(options) {
    				gotoNext = 43887
    				_ = gotoNext == 43887
    				if options[i_43868].Name == key_43444 {
    					gotoNext = 43918
    					_ = gotoNext == 43918
    					options[i_43868].Specified = true
    					options[i_43868].Enable = enable_43510
    					gotoNext = 43118
    					gotoNext = 43868
    				} else {
    					gotoNext = 43868
}
    				_ = gotoNext == 43868
    				i_43868++
    				gotoNext = 44009
    			} else {
    				gotoNext = 44014
}
    			gotoNext = 44014
    		} else {
    			gotoNext = 44014
}
    		_ = gotoNext == 44014
    		print("GODEBUG: unknown cpu feature \"", key_43444, "\"\n")
    		gotoNext = 43118
    	} else {
    		gotoNext = 44073
}
    	_ = gotoNext == 44073
    	if 0 < len(options) {
    		gotoNext = 44286
    		_ = gotoNext == 44286
    		i_44085_0, o_44080 = 0, options[0]
    		gotoNext = 44287
    		_ = gotoNext == 44287
    		if i_44085_0 < len(options) {
    			gotoNext = 44099
    			_ = gotoNext == 44099
    			o_44080 = options[i_44085_0]
    			if !o_44080.Specified {
    				gotoNext = 44119
    				_ = gotoNext == 44119
    				i_44085_0++
    				gotoNext = 44287
    				gotoNext = 44140
    			} else {
    				gotoNext = 44140
}
    			_ = gotoNext == 44140
    			if o_44080.Enable && !*o_44080.Feature {
    				gotoNext = 44167
    				_ = gotoNext == 44167
    				print("GODEBUG: can not enable \"", o_44080.Name, "\", missing CPU support\n")
    				i_44085_0++
    				gotoNext = 44287
    				gotoNext = 44264
    			} else {
    				gotoNext = 44264
}
    			_ = gotoNext == 44264
    			*o_44080.Feature = o_44080.Enable
    			i_44085_0++
    			gotoNext = 44287
    		} else {
    			gotoNext = 44289
}
    		gotoNext = 44289
    	} else {
    		gotoNext = 44289
}
    	_ = gotoNext == 44289
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


