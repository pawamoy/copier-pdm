generate() {
  copier copy -f --trust -r HEAD "$1" "$2" \
    -d testing=true \
    -d project_name="Testing" \
    -d project_description='Testing this template' \
    -d author_fullname="Shawn Smith" \
    -d author_username="sl-smith" \
    -d author_email="ssmith161803@gmail.com" \
    -d public_release=false
}
