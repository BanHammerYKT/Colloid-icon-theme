colors_folder() {
  case "$theme" in
    '')
      theme_color='#60c0f0'
      ;;
    -Purple)
      theme_color='#BA68C8'
      ;;
    -Pink)
      theme_color='#F06292'
      ;;
    -Red)
      theme_color='#F44336'
      ;;
    -Orange)
      theme_color='#FB8C00'
      ;;
    -Yellow)
      theme_color='#FFD600'
      ;;
    -Green)
      theme_color='#66BB6A'
      ;;
    -Teal)
      theme_color='#4DB6AC'
      ;;
    -Grey)
      theme_color='#888888'
      ;;
  esac

  if [[ "$scheme" == '-Nord' ]]; then
    case "$theme" in
      '')
        theme_color='#89a3c2'
        ;;
      -Purple)
        theme_color='#c89dbf'
        ;;
      -Pink)
        theme_color='#dc98b1'
        ;;
      -Red)
        theme_color='#d4878f'
        ;;
      -Orange)
        theme_color='#dca493'
        ;;
      -Yellow)
        theme_color='#eac985'
        ;;
      -Green)
        theme_color='#a0c082'
        ;;
      -Teal)
        theme_color='#83b9b8'
        ;;
      -Grey)
        theme_color='#757a99'
        ;;
    esac
  fi

  if [[ "$scheme" == '-Dracula' ]]; then
    case "$theme" in
      '')
        theme_color='#6272a4'
        ;;
      -Purple)
        theme_color='#bd93f9'
        ;;
      -Pink)
        theme_color='#ff79c6'
        ;;
      -Red)
        theme_color='#ff5555'
        ;;
      -Orange)
        theme_color='#ffb86c'
        ;;
      -Yellow)
        theme_color='#f1fa8c'
        ;;
      -Green)
        theme_color='#50fa7b'
        ;;
      -Teal)
        theme_color='#50fae9'
        ;;
      -Grey)
        theme_color='#757a99'
        ;;
    esac
  fi

  if [[ "$scheme" == '-Gruvbox' ]]; then
    case "$theme" in
      '')
        theme_color='#83a598'
        ;;
      -Purple)
        theme_color='#d386cd'
        ;;
      -Pink)
        theme_color='#d3869b'
        ;;
      -Red)
        theme_color='#fb4934'
        ;;
      -Orange)
        theme_color='#fe8019'
        ;;
      -Yellow)
        theme_color='#fabd2f'
        ;;
      -Green)
        theme_color='#b8bb26'
        ;;
      -Teal)
        theme_color='#8ec07c'
        ;;
      -Grey)
        theme_color='#868686'
        ;;
    esac
  fi

  if [[ "$scheme" == '-Everforest' ]]; then
    case "$theme" in
      '')
        theme_color='#7fbbb3'
        ;;
      -Purple)
        theme_color='#D699B6'
        ;;
      -Pink)
        theme_color='#d3869b'
        ;;
      -Red)
        theme_color='#E67E80'
        ;;
      -Orange)
        theme_color='#E69875'
        ;;
      -Yellow)
        theme_color='#DBBC7F'
        ;;
      -Green)
        theme_color='#A7C080'
        ;;
      -Teal)
        theme_color='#83C092'
        ;;
      -Grey)
        theme_color='#7a8478'
        ;;
    esac
  fi

  if [[ "$scheme" == '-Catppuccin' ]]; then
    case "$theme" in
      '')
        theme_color='#8caaee'
        ;;
      -Purple)
        theme_color='#ca9ee6'
        ;;
      -Pink)
        theme_color='#f4b8e4'
        ;;
      -Red)
        theme_color='#ea999c'
        ;;
      -Orange)
        theme_color='#fe8019'
        ;;
      -Yellow)
        theme_color='#ef9f76'
        ;;
      -Green)
        theme_color='#a6d189'
        ;;
      -Teal)
        theme_color='#81c8be'
        ;;
      -Grey)
        theme_color='#7c7f93'
        ;;
    esac
  fi

  cp folder.svg folder${theme}${scheme}
  sed -i "s/#60c0f0/${theme_color}/g" folder${theme}${scheme}
}

# '' '-Nord' '-Dracula' '-Gruvbox' '-Everforest' '-Catppuccin'

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Teal' '-Grey'; do
  scheme='-Catppuccin'
  colors_folder
done
