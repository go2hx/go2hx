package main

import (
	//"fmt"
	"fmt"
	"io/ioutil"
	"math/rand"
	"time"

	"github.com/ALTree/microsmith/microsmith"
)


func main() {
	rs := rand.New(
		rand.NewSource(int64(0xfaff0011 * uint64(time.Now().UnixNano()))),
	)
	conf := microsmith.RandConf(rs)
	
	gp := microsmith.NewProgram(rs, conf)

	fmt.Println("run")
	
	ioutil.WriteFile("smith_test.go",[]byte(gp.String()),0700)
}