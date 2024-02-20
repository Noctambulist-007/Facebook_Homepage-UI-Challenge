class _StoryCard extends StatelessWidget {
    final bool isAddStory;
    final User currentUser;
    final Story story;

  const
    _StoryCard( {
        Key key,
        this.isAddStory = false,
                this.currentUser,
                this.story,
    }):super(key:key);