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
include("${CMAKE_CURRENT_LIST_DIR}/gnu_base.cmake")

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")
set(PROJECT_TEMPLATE_CXX_COMPILER_MINIMUM_VERSION 11)

set(CMAKE_AR "ar")
set(CMAKE_RANLIB "ranlib")

string(
  JOIN " " CMAKE_C_FLAGS_RELEASE
  "${CMAKE_C_FLAGS_RELEASE}"
  -mavx2
  -fuse-ld=gold
)

string(
   JOIN " " CMAKE_EXE_LINKER_FLAGS
   "${CMAKE_EXE_LINKER_FLAGS}"
   -fuse-ld=gold
)
