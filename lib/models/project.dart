class Project {
  final String id,
      createdAt,
      projectName,
      groupName,
      projectFile,
      projectType,
      numOfDevelopers,
      numOfRequirements,
      image,
      title,
      description,
      gitHub,
      name,
      creator;
  final List likes;
  final int v;

  Project(
      {this.id,
      this.createdAt,
      this.projectName,
      this.groupName,
      this.projectFile,
      this.projectType,
      this.numOfDevelopers,
      this.numOfRequirements,
      this.image,
      this.title,
      this.description,
      this.gitHub,
      this.name,
      this.creator,
      this.likes,
      this.v});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        id: json['id'],
        createdAt: json['createdAt'],
        projectName: json['projectName'],
        groupName: json['groupName'],
        projectFile: json['projectFile'],
        projectType: json['projectType'],
        numOfDevelopers: json['numOfDevelopers'],
        numOfRequirements: json['numOfRequirements'],
        image: json['image'],
        title: json['title'],
        description: json['description'],
        gitHub: json['gitHub'],
        name: json['name'],
        creator: json['creator'],
        likes: json['likes'],
        v: json['__v']);
  }
}
