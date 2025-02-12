#!/bin/bash

# List of files to delete
files=(
stdgo/_internal/math/big/Big_t_nat_static_extension.hx
        stdgo/_internal/runtime/Runtime_t_goroutineprofilestateholder_asinterface.hx
        stdgo/_internal/runtime/Runtime_t_goroutineprofilestateholder_static_extension.hx
        stdgo/_internal/sync/Sync_map__asinterface.hx
        stdgo/_internal/sync/Sync_map__static_extension.hx
        stdgo/_internal/sync/Sync_mutex_asinterface.hx
        stdgo/_internal/sync/Sync_mutex_static_extension.hx
        stdgo/_internal/sync/Sync_t_entry_asinterface.hx
        stdgo/_internal/sync/Sync_t_entry_static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__bool__asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__bool__static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswapint32.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswapint64.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswappointer.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswapuint32.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswapuint64.hx
        stdgo/_internal/sync/atomic_/Atomic__compareandswapuintptr.hx
        stdgo/_internal/sync/atomic_/Atomic__int32_asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__int32_static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__int64__asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__int64__static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__pointer__asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__pointer__static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__swapint32.hx
        stdgo/_internal/sync/atomic_/Atomic__swapint64.hx
        stdgo/_internal/sync/atomic_/Atomic__swappointer.hx
        stdgo/_internal/sync/atomic_/Atomic__swapuint32.hx
        stdgo/_internal/sync/atomic_/Atomic__swapuint64.hx
        stdgo/_internal/sync/atomic_/Atomic__swapuintptr.hx
        stdgo/_internal/sync/atomic_/Atomic__uint32_asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__uint32_static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__uint64_asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__uint64_static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__uintptr_asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__uintptr_static_extension.hx
        stdgo/_internal/sync/atomic_/Atomic__value_asinterface.hx
        stdgo/_internal/sync/atomic_/Atomic__value_static_extension.hx
        stdgo/runtime/Runtime.hx
        stdgo/sync/Sync.hx
        stdgo/sync/atomic_/Atomic_.hx
)

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "File not found: $file"
    fi
done