#
#   Copyright 2011 Wade Alcorn wade@bindshell.net
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#
# DNS Enumeration

class Dns_enumeration < BeEF::Core::Command
  
  def self.options
    return [
        {'name' => 'dns_list', 'ui_label' => 'DNS (coma separated)', 'value' => '%default%'},
        {'name' => 'timeout', 'ui_label' => 'Timeout (ms)', 'value' => '4000'}
    ]
  end
  
  def post_execute
    content = {}
    content['result'] =@datastore['result'] if not @datastore['result'].nil?
    if content.empty?
      content['fail'] = 'No DNS hosts have been discovered.'
    end
    save content
  end
end
