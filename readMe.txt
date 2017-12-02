**create a new repository on the command line

echo "# ToDoList" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/215836017/ToDoList.git
git push -u origin master


**push an existing repository from the command line

git remote add origin https://github.com/215836017/ToDoList.git
git push -u origin master

目标： 跟随慕课网的视频做的一个demo，主要是学习UITableView，实现的效果就跟Android中的ListView一样。

1. 在界面中添加了UITableView， 实现了基本的数据集大小的显示。

2. 尝试了几种基本的Cell(Android中Item)的布局

2017.11.29


1. 实现了自定义的Item布局，但是在调整Item布局的高度时无效，具体的解决方法还没有找到

2. TableView中显示的数量是数组的大小

2017.12.02