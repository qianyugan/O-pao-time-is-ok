--警告：请勿用此代码干触犯法律的事，否则后果自负。

--玩玩就行，别得意过头。

--"O泡时间到"恶搞APP源代码。

--代码源于若干年前的恶搞程序。
require("import")
import("android.app.*")
import("android.os.*")
import("android.widget.*")
import("android.view.*")
import("android.view.View")
import("android.content.Context")
import("android.media.MediaPlayer")
import("android.media.AudioManager")
import("com.androlua.Ticker")
activity.getSystemService(Context.AUDIO_SERVICE).setStreamVolume(AudioManager.STREAM_MUSIC, 15, AudioManager.FLAG_SHOW_UI)
activity.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE)
m = MediaPlayer()
m.reset()
m.setDataSource(activity.getLuaDir() .. "/0.mp3") --此处0.mp3换成你的mp3文件
m.prepare()
m.start()
m.setLooping(true)
ti = Ticker()
ti.Period = 10
function ti.onTick()
  activity.getSystemService(Context.AUDIO_SERVICE).setStreamVolume(AudioManager.STREAM_MUSIC, 15, AudioManager.FLAG_SHOW_UI)
  activity.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE)
end
ti.start()
function onKeyDown(A0_0, A1_1)
  if string.find(tostring(A1_1), "KEYCODE_BACK") ~= nil then
    activity.getSystemService(Context.AUDIO_SERVICE).setStreamVolume(AudioManager.STREAM_MUSIC, 15, AudioManager.FLAG_SHOW_UI)
  end
  return true
end
