
BoxState a = BoxState.empty;
BoxState b = BoxState.empty;
BoxState c = BoxState.empty;
BoxState d = BoxState.empty;
BoxState e = BoxState.empty;
BoxState f = BoxState.empty;
BoxState g = BoxState.empty;
BoxState h = BoxState.empty;
BoxState i = BoxState.empty;

bool crossTurn = true;
GameState gameState = GameState.gameNotfinished;

enum BoxState {
  empty,
  cross,
  circle
}

enum GameState {
  gameNotfinished,
  crosswin,
  circlewin,
  //matchdraw
}