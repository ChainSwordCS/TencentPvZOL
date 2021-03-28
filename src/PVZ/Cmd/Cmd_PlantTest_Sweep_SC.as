package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.tencent.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_PlantTest_Sweep_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_PlantTest_Sweep_SC";
      
      public static const STAGEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_PlantTest_Sweep_SC.stageId","stageId",1 << 3 | WireType.VARINT);
      
      public static const REWARDLIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_PlantTest_Sweep_SC.rewardList","rewardList",2 << 3 | WireType.LENGTH_DELIMITED,Dto_IdNum);
      
      public static const CURRENTSUBCHAPTERID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_PlantTest_Sweep_SC.currentSubChapterId","currentSubChapterId",3 << 3 | WireType.VARINT);
       
      
      private var stageId$field:uint;
      
      private var hasField$0:uint = 0;
      
      public var rewardList:Array;
      
      private var currentSubChapterId$field:uint;
      
      public function Cmd_PlantTest_Sweep_SC()
      {
         this.rewardList = [];
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_PlantTest_Sweep_SC.$MessageID;
      }
      
      public function clearStageId() : void
      {
         this.hasField$0 &= 4294967294;
         this.stageId$field = new uint();
      }
      
      public function get hasStageId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set stageId(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.stageId$field = param1;
      }
      
      public function get stageId() : uint
      {
         return this.stageId$field;
      }
      
      public function clearCurrentSubChapterId() : void
      {
         this.hasField$0 &= 4294967293;
         this.currentSubChapterId$field = new uint();
      }
      
      public function get hasCurrentSubChapterId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentSubChapterId(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.currentSubChapterId$field = param1;
      }
      
      public function get currentSubChapterId() : uint
      {
         return this.currentSubChapterId$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasStageId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.stageId$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardList[_loc2_]);
            _loc2_++;
         }
         if(this.hasCurrentSubChapterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.currentSubChapterId$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc5_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc5_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_PlantTest_Sweep_SC.stageId cannot be set twice.");
                  }
                  _loc3_++;
                  this.stageId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  this.rewardList.push(ReadUtils.read$TYPE_MESSAGE(param1,new Dto_IdNum()));
                  break;
               case 3:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_PlantTest_Sweep_SC.currentSubChapterId cannot be set twice.");
                  }
                  _loc4_++;
                  this.currentSubChapterId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
