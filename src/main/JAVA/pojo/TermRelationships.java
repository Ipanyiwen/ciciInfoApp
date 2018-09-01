package pojo;


import java.io.Serializable;

public class TermRelationships implements Serializable {

  private static final long serialVersionUID = -2738835704905566248L;
  private long objectId;
  private long termTaxonomyId;


  public long getObjectId() {
    return objectId;
  }

  public void setObjectId(long objectId) {
    this.objectId = objectId;
  }


  public long getTermTaxonomyId() {
    return termTaxonomyId;
  }

  public void setTermTaxonomyId(long termTaxonomyId) {
    this.termTaxonomyId = termTaxonomyId;
  }

}
