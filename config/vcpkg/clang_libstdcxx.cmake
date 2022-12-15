#
#  Copyright Christopher Di Bella
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")
set(CMAKE_AR "llvm-ar")
set(CMAKE_RC_COMPILER "llvm-rc")
set(CMAKE_RANLIB "llvm-ranlib")

string(
   JOIN " " CMAKE_CXX_FLAGS
    -fmodules
    -fmodules-prune-after=5
    -stdlib=libstdc++
    -rtlib=compiler-rt
    -static-libgcc
    -unwindlib=libunwind
    -Werror
    -ftemplate-backtrace-limit=0
)

string(
   JOIN " " CMAKE_EXE_LINKER_FLAGS
     -fuse-ld=lld
     -flto=thin
)
