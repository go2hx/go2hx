package main

import (
	"fmt"
	"math/rand"
	"sync/atomic"
)

func main() {
	panic("skip for now")
	tests := [][]any{
		{uint16(0), ^uint16(0), uint16(1 + 2<<8), uint16(3 + 4<<8)},
		{uint32(0), ^uint32(0), uint32(1 + 2<<16), uint32(3 + 4<<16)},
		{uint64(0), ^uint64(0), uint64(1 + 2<<32), uint64(3 + 4<<32)},
		{complex(0, 0), complex(1, 2), complex(3, 4), complex(5, 6)},
	}
	p := 4
	N := int(1e5)
	p /= 2
	N = 1e3
	for _, test := range tests {
		var v atomic.Value
		done := make(chan bool, p)
		for i := 0; i < p; i++ {
			go func() {
				r := rand.New(rand.NewSource(rand.Int63()))
				expected := true
			loop:
				for j := 0; j < N; j++ {
					x := test[r.Intn(len(test))]
					v.Store(x)
					x = v.Load()
					for _, x1 := range test {
						if x == x1 {
							continue loop
						}
					}
					fmt.Printf("loaded unexpected value %+v, want %+v\n", x, test)
					expected = false
					break
				}
				done <- expected
			}()
		}
		for i := 0; i < p; i++ {
			if !<-done {
				panic("issue")
			}
		}
	}
}
