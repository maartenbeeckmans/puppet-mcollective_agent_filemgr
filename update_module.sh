#!/bin/bash

module_name='choria-mcollective_agent_filemgr'
module_version='2.0.1'

echo 'Updating module'

wget -c "https://forge.puppet.com/v3/files/${module_name}-${module_version}.tar.gz" -O - | tar -xz

mv ${module_name}-${module_version}/* .

rm -rfv "${module_name}-${module_version}"
