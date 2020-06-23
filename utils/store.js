/** 
 * 存储数据 
 * Storage信息存储 
 */ 
export function setItem(key, value, module_name) { 
  if (module_name) { 
      let module_name_info = this.getItem(module_name); 
      module_name_info[parseInt(key)] = value; 
      wx.setStorageSync(module_name, module_name_info); 
  } 
  else { 
      wx.setStorageSync(key, value); 
  } 
} 
export function getItem(key, module_name) { 
  if (module_name) { 
      let val = this.getItem(module_name); 
      if (val) 
          return val[key]; 
      return ""; 
  } 
  else{ 
      //console.log( wx.getStorageSync(key)); 
       
      return wx.getStorageSync(key); 
  } 
}