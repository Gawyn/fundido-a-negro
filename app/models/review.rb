class Review < Document
  attr_accessible :poster

  mount_uploader :poster, PosterUploader
end
