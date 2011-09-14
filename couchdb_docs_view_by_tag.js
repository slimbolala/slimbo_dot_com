function(doc) {
  if (doc.tags && doc.published && doc.title && doc.body) {
    for(var idx in doc.tags) {
      emit(doc.tags[idx], {
        published: doc.published,
	      title: doc.title,
        tags: doc.tags,
        teaser: doc.body.replace(/(([^\s]+\s\s*){100})(.*)/,"$1…"),
        id: doc._id
      });
    }
  }
}
