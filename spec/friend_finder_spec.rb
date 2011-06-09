require 'spec_helper'

describe FriendFinder do

  it "calculates word search hashes" do
    @friend_finder.search_tree_range_for('causes').should == ["6ca", "6cb", "6cc", "6cd", "6ce", "6cf", "6cg", "6ch", "6ci", "6cj", "6ck", "6cl", "6cm", "6cn", "6co", "6cp", "6cq", "6cr", "6cs", "6ct", "6cu", "6cv", "6cw", "6cx", "6cy", "6cz", "6ac", "6bc", "6cc", "6dc", "6ec", "6fc", "6gc", "6hc", "6ic", "6jc", "6kc", "6lc", "6mc", "6nc", "6oc", "6pc", "6qc", "6rc", "6sc", "6tc", "6uc", "6vc", "6wc", "6xc", "6yc", "6zc", "5ca", "5au", "5cu", "7ca", "7cb", "7cc", "7cd", "7ce", "7cf", "7cg", "7ch", "7ci", "7cj", "7ck", "7cl", "7cm", "7cn", "7co", "7cp", "7cq", "7cr", "7cs", "7ct", "7cu", "7cv", "7cw", "7cx", "7cy", "7cz", "7ac", "7bc", "7cc", "7dc", "7ec", "7fc", "7gc", "7hc", "7ic", "7jc", "7kc", "7lc", "7mc", "7nc", "7oc", "7pc", "7qc", "7rc", "7sc", "7tc", "7uc", "7vc", "7wc", "7xc", "7yc", "7zc"]
  
  end
  
  it "knows who might be friends of a word" do
    @possible_friends.should_not include(nil)
    @friend_finder.possible_friends_for("causes").size.should be == @possible_friends.size
  end
  
  before :all do
    @possible_friends = ["catchy", "catclaw", "catechu", "catelog", "catena", "catenae", "catenas", "cater", "cateran", "catered", "caterer", "caters", "cates", "catface", "catfall", "catfish", "catgut", "catguts", "cathead", "cathect", "cathode", "cathole", "cathood", "cation", "cations", "catjang", "catkin", "catkins", "catlike", "catlin", "catling", "catlins", "catmint", "catnap", "catnaps", "catnep", "catneps", "catnip", "catnips", "catskin", "catspaw", "catsuit", "catsup", "catsups", "cattabu",
     "cattail", "cattalo", "catted", "cattery", "cattie", "cattier", "catties", "cattily", "catting", "cattish", "cattle", "catty", "catwalk", "catworm", "caucus", "caudad", "caudal", "caudate", "caudex", "caudle", "caudled", "caudles", "caudron", "caught", "cauker", "caukers", "cauks", "cauld", "caulder", "caulds", "caules", "cauline", "caulis", "caulk", "caulked", "caulker", "caulks", "caulome", "cauls", "caumed", "cauming", "caums", "caups", "causa", "causae", "causal", "causals", "cause", "caused", "causen", "causer", "causers", "causes", "causey", "causeys", "causing", "caustic", "cautel", "cautels", "cauter", "cauters", "cautery", "caution",
      "cauves", "cavalla", "cavally", "cavalry", "cavass", "caveat", "caveats", "caved", "cavel", "cavels", "caveman", "cavemen", "caver", "cavern", "caverns", "cavers", "caves", "cavetti", "cavetto", "caviar", "caviare", "caviars", "cavie", "cavies", "cavil", "caviled", "caviler", "cavils", "caving", "cavings", "cavity", "cavort", "cavorts", "cawed", "cawing", "cawings", "cawker", "cawkers", "cawks", "caxon", "caxons", "cayenne", "cayman", "caymans", "cayuse", "cayuses", "cazique", "cease", "ceased", "ceases", "ceasing", "ceaze", "ceazed", "ceazes", "ceazing", "cebid", "cebids", "ceboid", "cecal", "cecils", "cecity", "cecum", "cedar", "cedarn",
       "cedars", "ceded", "ceder", "ceders", "cedes", "ceding", "cedis", "cedula", "cegep", "cegeps", "ceiba", "ceibas", "ceiled", "ceiler", "ceili", "ceilis", "ceils", "celeb", "celebs", "celery", "celiac", "cella", "cellae", "cellar", "celled", "celli", "cello", "cellos", "cells", "celom", "celoms", "celts", "cembra", "cement", "cendre", "cenote", "cense", "censed", "censer", "censes", "censor", "census", "centai", "cental", "centas", "center", "cento", "centos", "centra", "centre", "centry", "cents", "centu", "centum", "ceorl", "ceorls", "cepes", "cerate", "cercal", "cerci", "cercis", "cercus", "cereal", "cered", "ceres", "cereus", "cerge", "cerges", "ceria", "cerias", "ceric", "cering", "ceriph", "cerise", "cerite", "cerium", "cermet", "cerne", "cerned", "cernes", "ceroon", "ceros", "cerous", "cerris", "certes", "certs", "cerule", "ceruse", "cervid", "cervix", "cesium", "cesse", "cessed", "cesser",
        "cesses", "cesta", "cestas", "cesti", "cestoi", "cestos", "cestui", "cestus", "cesura", "cesure", "cetane", "cetes", "cetyl", "cetyls", "chablis", "chabouk", "chabuk", "chabuks", "chace", "chaced", "chaces", "chachka", "chacing", "chack", "chacked", "chacks", "chacma", "chacmas", "chaco", "chacoes", "chacos", "chadar", "chadars", "chaddar", "chaddor", "chador", "chadors", "chadri", "chads", "chaeta", "chaetae", "chaetal", "chafe", "chafed", "chafer", "chafers", "chafes", "chaff", "chaffed", "chaffer", "chaffs", "chaffy", "chafing", "chaft", "chafts", "chagan", "chagans", "chagrin", "chain", "chaine", "chained", "chaines", "chains", "chair", "chaired", "chairs", "chais", "chaise", "chaises", "chakra", "chakras", "chalah", "chalahs", "chalan", "chalans", "chalaza", "chalcid", "chalder", "chaleh", "chalehs",
         "chalet", "chalets", "chalice", "chalk", "chalked", "chalks", "chalky", "challa", "challah", "challan", "challas", "challie", "challis", "challot", "chally", "chalone", "chalot", "chaloth", "chals", "chalutz", "chamade", "chamber", "chambre", "chametz", "chamfer", "chamise", "chamiso", "chamlet", "chammy", "chamois", "chamoix", "champ", "champac", "champak", "champed", "champer", "champs", "champy", "chams", "chance", "chanced", "chancel", "chancer", "chances", "chancey", "chancre", "chancy", "chang", "change", "changed", "changer", "changes", "changs", "chank", "chanks", "channel", "channer", "chanoyu", "chanson", "chant", "chanted", "chanter", "chantey", "chantie", "chantor", "chantry", "chants", "chanty", "chaos", "chaoses", "chaotic", "chapati", "chape", "chapeau", "chapel", "chapels", "chapes", "chapess"]
         
  end
end
