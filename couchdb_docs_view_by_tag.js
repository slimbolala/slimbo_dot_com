function(doc) {
  if (doc.tags && doc.published && doc.title && doc.body) {
    for(var idx in doc.tags) {
      emit(doc.tags[idx],doc);
    }
  }
}
