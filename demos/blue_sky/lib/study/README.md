# study 


#### 1、Image.network('') 不能正常显示/显示空白
日志输出：Bad state: Insecure HTTP is not allowed by platform:

**solution：**  
* android
```
manifest中增加权限
<uses-permission android:name="android.permission.INTERNET" />

<application
			...
      android:usesCleartextTraffic="true" <!-- This Line -->
      android:icon="@mipmap/ic_launcher">
```
* ios
```
在ios/Runner/Info.plist文件中添加如下配置

	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
```
reference：[stackoverflow/bad-state-insecure-http-is-not-allowed-by-platform](https://stackoverflow.com/questions/64197752/bad-state-insecure-http-is-not-allowed-by-platform?answertab=active#tab-top)