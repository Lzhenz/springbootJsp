
function onTestAPI(api) {
    // 使用 Fetch API 访问后端接口
    fetch(api)  // 后端接口 URL
        .then(response => {
            if (!response.ok) {
                throw new Error('网络错误');
            }
            return response.json();  // 解析 JSON 响应
        })
        .then(data => {
            console.log(data);  // 在控制台输出返回的数据
            alert('从后端获取的数据: ' + JSON.stringify(data));
        })
        .catch(error => {
            console.error('请求失败:', error);
            alert('请求失败');
        });
}
