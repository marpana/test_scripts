read -p "enter your age" age
if [ "${age}" -lt 18 ]; then
  echo you are minor
  elif [ "${age}" -gt 60 ]; then
    echo you are senior citizen
    else
      echo you are major
      fi