package main

func main() {
	var idleConnWait = map[connectMethodKey]wantConnQueue{
		connectMethodKey{"hi"}: wantConnQueue{},
	}
	key := connectMethodKey{"hi"}
	if q, ok := idleConnWait[key]; ok {
		println("ok")
		_ = q
	} else {
		panic("key not found")
	}
}

type connectMethodKey struct {
	proxy string
}

type wantConnQueue struct{}
