#!/bin/bash

rails stop
rake db:drop db:create db:migrate
rails s -b $IP -p $PORT
