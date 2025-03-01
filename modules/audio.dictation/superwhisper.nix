{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # dictation tool including LLM reformatting
    # replaces: Dragon NaturallySpeaking, WhisperTranscribe
    "superwhisper"
  ];
}
