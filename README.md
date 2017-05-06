# Flyme6_device_gemini
+ I am trying to port flyme6 to Xiaomi Mi5
+ It is booting.I am trying to deal with errors.

## What is not working
+ Telephony
+ Flyme account, theme  etc
+ systemui sometimes crash

Information:
<pre><code>
05-06 12:01:06.821  5799  5799 E TelephonyPluginDelegate: error: TelephonyPluginDelegate instance is not created!!
05-06 12:01:06.821  5799  5799 D AndroidRuntime: Shutting down VM
05-06 12:01:06.822  5799  5799 E AndroidRuntime: FATAL EXCEPTION: main
05-06 12:01:06.822  5799  5799 E AndroidRuntime: Process: com.android.phone, PID: 5799
05-06 12:01:06.822  5799  5799 E AndroidRuntime: java.lang.RuntimeException: Unable to create application com.android.phone.PhoneApp: java.lang.NullPointerException: Attempt to invoke virtual method 'void com.android.internal.telephony.TelephonyPluginDelegate.initSubscriptionController(android.content.Context, com.android.internal.telephony.CommandsInterface[])' on a null object reference
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.ActivityThread.handleBindApplication(ActivityThread.java:4726)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.ActivityThread.-wrap1(ActivityThread.java)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1421)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.os.Handler.dispatchMessage(Handler.java:102)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.os.Looper.loop(Looper.java:148)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.ActivityThread.main(ActivityThread.java:5433)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at java.lang.reflect.Method.invoke(Native Method)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:726)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:616)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: Caused by: java.lang.NullPointerException: Attempt to invoke virtual method 'void com.android.internal.telephony.TelephonyPluginDelegate.initSubscriptionController(android.content.Context, com.android.internal.telephony.CommandsInterface[])' on a null object reference
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.internal.telephony.PhoneFactory.makeDefaultPhone(PhoneFactory.java:170)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.internal.telephony.PhoneFactory.makeDefaultPhones(PhoneFactory.java:86)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.phone.PhoneGlobals.onCreate(PhoneGlobals.java:417)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at com.android.phone.PhoneApp.onCreate(PhoneApp.java:47)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.Instrumentation.callApplicationOnCreate(Instrumentation.java:1014)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	at android.app.ActivityThread.handleBindApplication(ActivityThread.java:4723)
05-06 12:01:06.822  5799  5799 E AndroidRuntime: 	... 8 more
</code></pre>
<pre><code>
05-06 11:42:35.952  1617  2858 E flymed_connector: Communications error: java.io.IOException: No such file or directory
05-06 11:42:35.953  1617  2858 E flymed_connector: Error in NativeDaemonConnector: java.io.IOException: No such file or directory
</code></pre>
<pre><code>
05-06 11:42:36.278   469   469 E SELinux : avc:  denied  { find } for service=flyme_permission scontext=u:r:system_server:s0 tcontext=u:object_r:access_control_service:s0 tclass=service_manager
05-06 11:42:37.903   469   469 E SELinux : avc:  denied  { find } for service=flyme_permission scontext=u:r:system_server:s0 tcontext=u:object_r:access_control_service:s0 tclass=service_manager
</code></pre>
<pre><code>
05-06 11:37:59.669  2495  2499 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()
05-06 11:37:59.678  2495  2499 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()
05-06 11:37:59.679  2495  2499 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()
05-06 11:37:59.687  2495  2499 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()
05-06 11:37:59.687  2495  2499 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()
05-06 11:37:59.702  2495  2497 W dex2oat : No verified method for method calling String.<init>: java.lang.String android.text.SpannableStringBuilder.toString()</code></pre>
</code></pre>