Last login: Thu May 26 11:29:35 on ttys000
murillo@MacBook-Air-de-Murillo ~ % vi






















  if [[ $OPPONENT != 'opponent' ]]

  then

    if [[ -z $TEAMS ]]

    then

    INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")

    fi

  fi

  # id dos times

  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

  TEAMS_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  # todos

  if [[ -n $TEAM_ID || -n $TEAMS_ID ]]

