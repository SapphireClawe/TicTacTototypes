Boolean check3InRowX = false;
Boolean check3InRowO = false;
Boolean winX = false;
Boolean winO = false;

void check3InRowDraw() {
  if (count >= 5) {
      check3InRowX = true;
      check3InRowO = true;
    }

  if (check3InRowX == true) {
    onlyX();
    winX = checkNestedFOR("X", onlyXPiece);
  }
  
  if (check3InRowO == true) {
    onlyO();
    winO = checkNestedFOR("O", onlyOPiece);
  }
}

void onlyX() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "X") {
      onlyXPiece[i] = "X";
    }
  }
}

void onlyO() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "O") {
      onlyOPiece[i] = "O";
    }
  }
}

Boolean checkNestedFOR(String string, String[] pieces) {
  Boolean win = false;
  if (pieces[0] == string && pieces[1] == string && pieces[2] == string) { 
    win = true;
  } else {
  }
  if (pieces[3] == string && pieces[4] == string && pieces[5] == string) {
    win = true;
  } else {
  }
  if (pieces[6] == string && pieces[7] == string && pieces[8] == string) {
   win = true;
  } else {
  }
  if (pieces[2] == string && pieces[4] == string && pieces[6] == string) { 
   win = true;
  } else {
  }
  if (pieces[0] == string && pieces[3] == string && pieces[6] == string) { 
    win = true;
  } else {
  }
  if (pieces[1] == string && pieces[4] == string && pieces[7] == string) { 
    win = true;
  } else {
   
  }
  if (pieces[2] == string && pieces[5] == string && pieces[8] == string) {
    win = true;
  } else {
  }
  if (pieces[0] == string && pieces[4] == string && pieces[8] == string) { 
    win = true;
  } else {
     }
  
  return win;
}
