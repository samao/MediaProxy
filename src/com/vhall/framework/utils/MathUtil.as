package com.vhall.framework.utils
{
	/**
	 * 数学相关工具函数 
	 * @author Sol
	 * 
	 */	
	public class MathUtil
	{
		/**
		 * 将数值限制在一个区间内
		 *
		 * @param v	数值
		 * @param min	最大值
		 * @param max	最小值
		 *
		 */
		public static function limitIn(v:Number, min:Number, max:Number):Number
		{
			return Math.min(Math.max(v, min), max);
		}
	}
}