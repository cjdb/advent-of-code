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
set(CMAKE_FIND_ROOT_PATH "/usr/")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE ON)

string(
   JOIN " " CMAKE_CXX_FLAGS
   -fvisibility=hidden
   -fstack-protector
   -fdiagnostics-color=always
   -pedantic
   -Werror
   -Wall
   -Wextra
	 -Wattributes
   -Wcast-align
   -Wconversion
   -Wdouble-promotion
   -Wformat=2
   -Wno-attributes
   -Wno-unused-command-line-argument
   -Wnon-virtual-dtor
   -Wnull-dereference
   -Wodr
   -Wold-style-cast
   -Woverloaded-virtual
   -Wshadow
   -Wsign-conversion
   -Wsign-promo
   -Wunused
)
