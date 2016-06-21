name             'flinkie'
maintainer       "flinkie"
maintainer_email "jdowling@kth.se"
license          "Apache v2.0"
description      'Installs/Configures/Runs flinkie'
version          "0.1"

recipe            "flinkie::install", "Experiment setup for flinkie"
recipe            "flinkie::experiment",  "configFile=; Experiment name: experiment"
recipe            "flinkie::",  "configFile=; Experiment name: "


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "flinkie/group",
:description => "group parameter value",
:type => "string"

attribute "flinkie/streamline",
:description => "streamline parameter value",
:type => "string"

attribute "flinkie/user",
:description => "user parameter value",
:type => "string"


