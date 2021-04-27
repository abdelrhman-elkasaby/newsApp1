
part of 'technology_imports.dart';
class Technology extends StatefulWidget {
  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> with TechnologyData{
  
  @override
  void initState() {
    onTechnologyApiData(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TechnologyCubit, TechnologyState>(
  builder: (context, state) {
    if(state is TechnologyUpdate)
      {
        return ListView.builder(
          itemCount: state.homeModel.articles.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>NewsDetails(index,'technology'))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: DecoratedBox(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(state.homeModel.articles[index].urlToImage,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*0.25,),
                          Container(
                              width: MediaQuery.of(context).size.width*0.85,
                              child: Text(state.homeModel.articles[index].title??'no title',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,textAlign: TextAlign.start,)),
                          Container(
                              width: MediaQuery.of(context).size.width*0.85,
                              child: Text(state.homeModel.articles[index].description??'no description',style: TextStyle(color: Colors.grey,fontSize: 12),textDirection: TextDirection.rtl,textAlign: TextAlign.start,))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }else{
      return Center(child: CircularProgressIndicator(),);
    }
  },
);
  }
}
