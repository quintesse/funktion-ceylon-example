/*
 * Copyright 2016 Red Hat, Inc.
 * <p>
 * Red Hat licenses this file to you under the Apache License, version
 * 2.0 (the "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied.  See the License for the specific language governing
 * permissions and limitations under the License.
 *
 */
import org.apache.camel { header }
import java.lang { JString=String }

shared String main(JString? body, header("name") JString? name) {
    String host = process.environmentVariableValue("HOSTNAME") else "";
    if (exists name) {
        return "Hello ``name``! I got payload '``body else ""``' and I am on host: ``host`` and I am Ceylon!";
    } else {
        return "What is your name? Specify a name using ?name=foo as query parameter. I am on host: ``host`` and I am Ceylon!";
    }
}
