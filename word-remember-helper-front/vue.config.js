module.exports = {
    devServer: {
        port: 8888,
        proxy: {
            '/api': {
                target: 'http://127.0.0.1:6666/api/v1',
                changeOrigin: true,
                pathRewrite: {
                    '^/api': ''
                }
            }
        }
    }
}