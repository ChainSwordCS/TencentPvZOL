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
   
   public final class Dto_TopFightStageBetInfo extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Dto_TopFightStageBetInfo";
      
      public static const STAGEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_TopFightStageBetInfo.stageId","stageId",1 << 3 | WireType.VARINT);
      
      public static const PAIRBET:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Dto_TopFightStageBetInfo.pairBet","pairBet",2 << 3 | WireType.LENGTH_DELIMITED,Dto_TopFightPairBetInfo);
       
      
      private var stageId$field:uint;
      
      private var hasField$0:uint = 0;
      
      public var pairBet:Array;
      
      public function Dto_TopFightStageBetInfo()
      {
         this.pairBet = [];
         super();
      }
      
      override public function get $messageID() : String
      {
         return Dto_TopFightStageBetInfo.$MessageID;
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
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasStageId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.stageId$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.pairBet.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.pairBet[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_TopFightStageBetInfo.stageId cannot be set twice.");
                  }
                  _loc3_++;
                  this.stageId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  this.pairBet.push(ReadUtils.read$TYPE_MESSAGE(param1,new Dto_TopFightPairBetInfo()));
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
