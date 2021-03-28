package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_TopFight_Bet_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_TopFight_Bet_CS";
      
      public static const STAGEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_TopFight_Bet_CS.stageId","stageId",1 << 3 | WireType.VARINT);
      
      public static const PAIRINDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_TopFight_Bet_CS.pairIndex","pairIndex",2 << 3 | WireType.VARINT);
      
      public static const BETTYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_TopFight_Bet_CS.betType","betType",3 << 3 | WireType.VARINT);
      
      public static const BETVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_TopFight_Bet_CS.betValue","betValue",4 << 3 | WireType.VARINT);
      
      public static const BETFIGHTRESULT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("PVZ.Cmd.Cmd_TopFight_Bet_CS.betFightResult","betFightResult",5 << 3 | WireType.VARINT);
       
      
      private var stageId$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var pairIndex$field:uint;
      
      private var betType$field:uint;
      
      private var betValue$field:uint;
      
      private var betFightResult$field:Boolean;
      
      public function Cmd_TopFight_Bet_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_TopFight_Bet_CS.$MessageID;
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
      
      public function clearPairIndex() : void
      {
         this.hasField$0 &= 4294967293;
         this.pairIndex$field = new uint();
      }
      
      public function get hasPairIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set pairIndex(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.pairIndex$field = param1;
      }
      
      public function get pairIndex() : uint
      {
         return this.pairIndex$field;
      }
      
      public function clearBetType() : void
      {
         this.hasField$0 &= 4294967291;
         this.betType$field = new uint();
      }
      
      public function get hasBetType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set betType(param1:uint) : void
      {
         this.hasField$0 |= 4;
         this.betType$field = param1;
      }
      
      public function get betType() : uint
      {
         return this.betType$field;
      }
      
      public function clearBetValue() : void
      {
         this.hasField$0 &= 4294967287;
         this.betValue$field = new uint();
      }
      
      public function get hasBetValue() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set betValue(param1:uint) : void
      {
         this.hasField$0 |= 8;
         this.betValue$field = param1;
      }
      
      public function get betValue() : uint
      {
         return this.betValue$field;
      }
      
      public function clearBetFightResult() : void
      {
         this.hasField$0 &= 4294967279;
         this.betFightResult$field = new Boolean();
      }
      
      public function get hasBetFightResult() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set betFightResult(param1:Boolean) : void
      {
         this.hasField$0 |= 16;
         this.betFightResult$field = param1;
      }
      
      public function get betFightResult() : Boolean
      {
         return this.betFightResult$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasStageId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.stageId$field);
         }
         if(this.hasPairIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.pairIndex$field);
         }
         if(this.hasBetType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.betType$field);
         }
         if(this.hasBetValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.betValue$field);
         }
         if(this.hasBetFightResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.betFightResult$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc8_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc8_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc8_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_TopFight_Bet_CS.stageId cannot be set twice.");
                  }
                  _loc3_++;
                  this.stageId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_TopFight_Bet_CS.pairIndex cannot be set twice.");
                  }
                  _loc4_++;
                  this.pairIndex = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 3:
                  if(_loc5_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_TopFight_Bet_CS.betType cannot be set twice.");
                  }
                  _loc5_++;
                  this.betType = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 4:
                  if(_loc6_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_TopFight_Bet_CS.betValue cannot be set twice.");
                  }
                  _loc6_++;
                  this.betValue = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 5:
                  if(_loc7_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_TopFight_Bet_CS.betFightResult cannot be set twice.");
                  }
                  _loc7_++;
                  this.betFightResult = ReadUtils.read$TYPE_BOOL(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc8_);
                  break;
            }
         }
      }
   }
}
