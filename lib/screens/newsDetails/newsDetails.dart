part of 'newsDetails_imports.dart';
class NewsDetails extends StatefulWidget {
  final int index;
  final String category;
  const NewsDetails(this.index,this.category);
  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}
class _NewsDetailsState extends State<NewsDetails> with NewsDetailsData{
  @override
  void initState() {
    onFetchNewsDetails(widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericCubit<HomeModel>, GenericState<HomeModel>>(
      bloc: detailsCubit,
  builder: (context, state) {
    if(state is GenericUpdateState)
      {
        return Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text(state.data.articles[widget.index].source.name),
          ),
          body:Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(state.data.articles[widget.index].urlToImage,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*0.25,),
                      const SizedBox(height: 15,),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(state.data.articles[widget.index].description,style: TextStyle(fontSize: 18),textDirection: TextDirection.rtl,textAlign: TextAlign.start,)),
                      const SizedBox(height: 15,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text('يمكنك قراءة الخبر كامل عن طريق هذا اللينك : ',textDirection: TextDirection.rtl,),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: InkWell(
                          child: Text('${state.data.articles[widget.index].url}',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.blue),),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewScreen(state.data.articles[widget.index].url,state.data.articles[widget.index].source.name)));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }else{
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('News App'),
          centerTitle: true,
        ),
          body: Center(child: CircularProgressIndicator(),));
    }
  },
);
  }
}
