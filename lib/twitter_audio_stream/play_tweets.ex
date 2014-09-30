defmodule TwitterAudioStream.PlayTweets do
  def play(search_string) do
    ExTwitter.stream_filter(track: search_string)
      |> Stream.map(&count_characters/1)
      |> Stream.map(&play_audio/1)
      |> Enum.to_list
  end

  def count_characters(tweet) do
    tweet.text |> String.length
  end

  def play_audio(tone) do
    ExMidilib.MidiPlayer.play_note_actually(:paplay, tone, 0.5, 1)
    IO.inspect tone
  end
end
