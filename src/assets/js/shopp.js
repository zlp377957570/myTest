class shopping {
    constructor(params) {
        this.params = params
        console.log(params)
        this.init()
    }
    init(){
        console.log(this.params)
    }
  }
  
  window.shopp = function (params) {
    return new shopping(params);
  };
  const shopp = window.shopp
  export default shopp