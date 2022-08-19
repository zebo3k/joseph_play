#this project
project_name: "joseph_play2"

# the project to import
local_dependency: {
  project: "fivetran_facebook"
}

remote_dependency: block_stitch_facebook_ads {
  url: "https://github.com/llooker/block-stitch-facebook-ads.git"
  ref: "master"
}
