function words(str){
    var params = str.trim().split(' ');
    var trimmedData = params.filter(x=>x.length>0);
    var output = trimmedData.map(next=>{
       return next[0].toUpperCase() + next.substring(1);
    });
}