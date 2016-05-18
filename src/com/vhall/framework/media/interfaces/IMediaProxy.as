/**
 * ===================================
 * Author:	iDzeir					
 * Email:	qiyanlong@wozine.com	
 * Company:	http://www.vhall.com		
 * Created:	May 16, 2016 10:22:47 AM
 * ===================================
 */

package com.vhall.framework.media.interfaces
{
	import flash.net.NetStream;

	/**
	 * 推拉流视频播放封装接口
	 */	
	public interface IMediaProxy
	{
		/** 代理类型MediaProxyType*/
		function get type():String;
		
		/** 是否正在播放*/
		function get isPlaying():Boolean;
		
		/** 是否自动播放*/
		function get autoPlay():Boolean;
		
		/**
		 * 建立播放链接，播放流
		 * @param uri 服务器地址，http或者本地视频时候为文件路径
		 * @param streamUrl 流名称，http或者本地视频时候，忽略
		 * @param handler 处理链接播放过程中的回调｛1，n｝个参数
		 * @param autoPlay 是否自动播放
		 */		
		function connect(uri:String, streamUrl:String = null, handler:Function = null,autoPlay:Boolean = true):void;
		
		/** 开始播放*/		
		function start():void;
		
		/** 视频音量*/
		function get volume():Number;
		
		/** @private*/
		function set volume(value:Number):void;
		
		/** 流名称*/
		function get streamUrl():String;
		
		/** 服务器地址*/
		function get uri():String;
		
		/** 回放视频的总时长*/
		function get duration():Number;
		
		/** 回放视频当前时间点*/
		function get time():Number;
		
		/** @private*/
		function set time(value:Number):void;
		
		/** 当前播放视频使用的netStream*/		
		function get stream():NetStream;
		
		/** 停止播放视频，推流停止推流*/
		function stop():void;
		
		/** 暂停*/
		function pause():void;
		
		/** 暂停恢复*/
		function resume():void;
		
		/** 切换暂停恢复状态*/
		function toggle():void;
	}
}