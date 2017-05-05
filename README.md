# Flyme6_device_gemini
+ I am trying to port flyme6 to Xiaomi Mi5
+ It is not working yet. Now I can see boot animation.

Information:
<pre><code>
05-04 22:24:18.199  1623  1623 I dex2oat : Verification error in void com.android.server.policy.PhoneWindowManager.init(android.content.Context, android.view.IWindowManager, android.view.WindowManagerPolicy$WindowManagerFuncs)
05-04 22:24:18.199  1623  1623 I dex2oat : void com.android.server.policy.PhoneWindowManager.init(android.content.Context, android.view.IWindowManager, android.view.WindowManagerPolicy$WindowManagerFuncs) failed to verify: void com.android.server.policy.PhoneWindowManager.init(android.content.Context, android.view.IWindowManager, android.view.WindowManagerPolicy$WindowManagerFuncs): [0x56E] copyRes1 v12<- result0 type=Conflict
05-04 22:24:18.204  1623  1623 I dex2oat : Verification error in int com.android.server.policy.PhoneWindowManager.interceptKeyBeforeQueueing(android.view.KeyEvent, int)
05-04 22:24:18.204  1623  1623 I dex2oat : int com.android.server.policy.PhoneWindowManager.interceptKeyBeforeQueueing(android.view.KeyEvent, int) failed to verify: int com.android.server.policy.PhoneWindowManager.interceptKeyBeforeQueueing(android.view.KeyEvent, int): [0x34D] register v15 has type Undefined but expected Integer
05-04 22:24:18.213  1623  1623 W dex2oat : Verification failed on class com.android.server.policy.PhoneWindowManager in services.jar because: Verifier rejected class com.android.server.policy.PhoneWindowManager due to bad method int com.android.server.policy.PhoneWindowManager.interceptKeyBeforeQueueing(android.view.KeyEvent, int)

</code></pre>

<pre><code>
05-04 22:25:31.796  1612  1646 E AndroidRuntime: *** FATAL EXCEPTION IN SYSTEM PROCESS: android.display
05-04 22:25:31.796  1612  1646 E AndroidRuntime: java.lang.VerifyError: Rejecting class com.android.server.policy.PhoneWindowManager because it failed compile-time verification (declaration of 'com.android.server.policy.PhoneWindowManager' appears in /system/framework/services.jar)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at com.android.server.wm.WindowManagerService.<init>(WindowManagerService.java:344)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at com.android.server.wm.FlymeExtWindowManagerService.<init>(FlymeExtWindowManagerService.java:17)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at com.android.server.wm.WindowManagerService$3.run(WindowManagerService.java:874)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at android.os.Handler$BlockingRunnable.run(Handler.java:759)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at android.os.Handler.handleCallback(Handler.java:739)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at android.os.Handler.dispatchMessage(Handler.java:95)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at android.os.Looper.loop(Looper.java:148)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at android.os.HandlerThread.run(HandlerThread.java:61)
05-04 22:25:31.796  1612  1646 E AndroidRuntime: 	at com.android.server.ServiceThread.run(ServiceThread.java:46)
05-04 22:25:31.797  1612  1612 E System  : ******************************************
05-04 22:25:31.797  1612  1646 I Process : Sending signal. PID: 1612 SIG: 9
05-04 22:25:31.824   494   494 E installd: eof
05-04 22:25:31.823   468   468 I lowmemorykiller: ActivityManager disconnected
05-04 22:25:31.824   468   468 I lowmemorykiller: Closing Activity Manager data connection
05-04 22:25:31.824   494   494 E installd: failed to read size
05-04 22:25:31.824   494   494 I installd: closing connection
05-04 22:25:31.824   469   469 I ServiceManager: service 'activity' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'procstats' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'package' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'user' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'meminfo' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'gfxinfo' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'dbinfo' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'cpuinfo' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'permission' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'processinfo' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'sensorservice' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'battery' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'usagestats' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'webviewupdate' died
05-04 22:25:31.824   469   469 I ServiceManager: service 'scheduling_policy' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'telephony.registry' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'media.camera.proxy' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'account' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'content' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'vibrator' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'consumer_ir' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'alarm' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'batterystats' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'appops' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'power' died
05-04 22:25:31.825   469   469 I ServiceManager: service 'display' died
05-04 22:25:31.826   521   521 E Zygote  : Exit zygote because system server (1612) has terminated
05-04 22:25:31.858   469   469 I ServiceManager: service 'DisplayFeatureControl' died
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 1
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 2
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 3
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 4
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 5
05-04 22:25:31.875  2298  2298 D DisplayFeatureService: supported id: 6
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.sound_trigger_hw' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.radio' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.audio_policy' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.audio_flinger' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.player' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.resource_manager' died
05-04 22:25:31.877   469   469 I ServiceManager: service 'media.camera' died
05-04 22:25:31.875  2298  2298 I displayfeature: ServiceManager: 0x7fad7a10c0

</code></pre>
