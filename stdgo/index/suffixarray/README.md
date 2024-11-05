# Module: `stdgo.index.suffixarray`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Suffixarray](<#class-suffixarray>)

  - [`function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index`](<#suffixarray-function-new_>)

- [abstract Index](<#abstract-index>)

- [abstract T\_ints](<#abstract-t_ints>)

# Classes


```haxe
import
```


## class Suffixarray


```
{
    	id_3362644 = 0
    	lastLen_3362653 = int64(-1)
    	lastPos_3362689 = int64(0)
    	if 0 < len(sa[len(sa)-numLMS:]) {
    		gotoNext = 3363273
    		_ = gotoNext == 3363273
    		i_3362722_0, j_3362717 = 0, sa[len(sa)-numLMS:][0]
    		gotoNext = 3363274
    		_ = gotoNext == 3363274
    		if i_3362722_0 < len(sa[len(sa)-numLMS:]) {
    			gotoNext = 3362748
    			_ = gotoNext == 3362748
    			j_3362717 = sa[len(sa)-numLMS:][i_3362722_0]
    			n_3362836 = sa[j_3362717/2]
    			if n_3362836 != lastLen_3362653 {
    				gotoNext = 3362867
    				_ = gotoNext == 3362867
    				gotoNext = 3363204
    				gotoNext = 3362887
    			} else {
    				gotoNext = 3362887
}
    			_ = gotoNext == 3362887
    			if uint64(n_3362836) >= uint64(len(text)) {
    				gotoNext = 3362921
    				_ = gotoNext == 3362921
    				gotoNext = 3363245
    				gotoNext = 3363006
    			} else {
    				gotoNext = 3363006
}
    			_ = gotoNext == 3363006
{
    				n_3363039 = int(n_3362836)
    				this_3363054 = text[j_3362717:][:n_3363039]
    				last_3363078 = text[lastPos_3362689:][:n_3363039]
    				i_3363112 = 0
    				gotoNext = 3363108
    				_ = gotoNext == 3363108
    				if i_3363112 < n_3363039 {
    					gotoNext = 3363131
    					_ = gotoNext == 3363131
    					if this_3363054[i_3363112] != last_3363078[i_3363112] {
    						gotoNext = 3363159
    						_ = gotoNext == 3363159
    						gotoNext = 3363204
    						gotoNext = 3363127
    					} else {
    						gotoNext = 3363127
}
    					_ = gotoNext == 3363127
    					i_3363112++
    					gotoNext = 3363108
    				} else {
    					gotoNext = 3363189
}
    				_ = gotoNext == 3363189
    				gotoNext = 3363245
}
    			gotoNext = 3363204
    			_ = gotoNext == 3363204
    			id_3362644++
    			lastPos_3362689 = j_3362717
    			lastLen_3362653 = n_3362836
    			gotoNext = 3363245
    			_ = gotoNext == 3363245
    			sa[j_3362717/2] = int64(id_3362644)
    			i_3362722_0++
    			gotoNext = 3363274
    		} else {
    			gotoNext = 3363277
}
    		gotoNext = 3363277
    	} else {
    		gotoNext = 3363277
}
    	_ = gotoNext == 3363277
    	return id_3362644
    	gotoNext = -1
    }
```
### Suffixarray function new\_


```haxe
function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index
```


```
New creates a new Index for data.
        Index creation time is O(N) for N = len(data).
```
[\(view code\)](<./Suffixarray.hx#L163>)


# Abstracts


## abstract Index


[\(view file containing code\)](<./Suffixarray.hx>)


## abstract T\_ints


[\(view file containing code\)](<./Suffixarray.hx>)


