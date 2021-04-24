package time
import (
	"time"
)

type runtimeTimer struct {
	
}

//#go2hx stdgo.Time.sleep
func Sleep(d time.Duration)
//#go2hx stdgo.Time.startTimer
func startTimer(t *runtimeTimer)
//#go2hx stdgo.Time.stopTimer
func stopTimer(t *runtimeTimer) bool
//#go2hx stdgo.Time.modTimer
func modTimer (t *runtimeTimer, when int64, period int64, f func(interface{},uintptr),arg interface{},seq uintptr)
//go2hx stdgo.Time.resetTimer
func resetTimer(t *runtimeTimer,when int64) bool
//#go2hx stdgo.Time.indexByte
func indexByte(s string, c byte) int

func forceZipFileForTesting (zipOnly bool) {

}